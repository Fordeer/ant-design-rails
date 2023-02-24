import { Card, message } from 'antd';
import ProForm, {
  ProFormDateRangePicker,
  ProFormDependency,
  ProFormDigit,
  ProFormRadio,
  ProFormSelect,
  ProFormText,
  ProFormTextArea,
} from '@ant-design/pro-form';
import { useRequest } from 'umi';
import type { FC } from 'react';
import { PageContainer } from '@ant-design/pro-layout';
import { submitBasicForm } from '../../services/ant-design-pro/api';
import styles from './style.less';

const FormBasicForm: FC<Record<string, any>> = () => {
  const { run } = useRequest(submitBasicForm, {
    manual: true,
    onSuccess: () => {
      message.success('Submitted successfully');
    },
  });

  const onFinish = async (values: Record<string, any>) => {
    run(values);
  };

  return (
    <PageContainer content="Form pages are used to collect or validate information from users, and basic forms are commonly used in form scenarios with few data items.">
      <Card bordered={false}>
        <ProForm
          hideRequiredMark
          style={{ margin: 'auto', marginTop: 8, maxWidth: 600 }}
          name="basic"
          layout="vertical"
          initialValues={{ public: '1' }}
          onFinish={onFinish}
        >
          <ProFormText
            width="md"
            label="Title"
            name="title"
            rules={[
              {
                required: true,
                message: 'Please enter a title',
              },
            ]}
            placeholder="Give a name to the goal"
          />
          <ProFormDateRangePicker
            label="Start and end date"
            width="md"
            name="date"
            rules={[
              {
                required: true,
                message: 'Please select the start and end date',
              },
            ]}
            placeholder={['Start Date', 'End Date']}
          />
          <ProFormTextArea
            label="Goal Description"
            width="xl"
            name="goal"
            rules={[
              {
                required: true,
                message: 'Please enter a description of your goal',
              },
            ]}
            placeholder="Please enter your work milestones"
          />

          <ProFormTextArea
            label="Measurement criteria"
            name="standard"
            width="xl"
            rules={[
              {
                required: true,
                message: 'Please enter measurement criteria',
              },
            ]}
            placeholder="Please enter measurement criteria"
          />

          <ProFormText
            width="md"
            label={
              <span>
                Customers
                <em className={styles.optional}> (optional)</em>
              </span>
            }
            tooltip="Targeted customers"
            name="client"
            placeholder="Please describe the customer you serve"
          />

          <ProFormText
            width="md"
            label={
              <span>
                Invited Reviewers
                <em className={styles.optional}> (optional)</em>
              </span>
            }
            name="invites"
            placeholder="Please directly mention name or Work No., maximum 5 people can be invited"
          />

          <ProFormDigit
            label={
              <span>
                Weights
                <em className={styles.optional}> (optional)</em>
              </span>
            }
            name="weight"
            placeholder="Please enter"
            min={0}
            max={100}
            width="xs"
            fieldProps={{
              formatter: (value) => `${value || 0}%`,
              parser: (value) => (value ? value.replace('%', '') : '0'),
            }}
          />

          <ProFormRadio.Group
            options={[
              {
                value: '1',
                label: 'Public',
              },
              {
                value: '2',
                label: 'Partially public',
              },
              {
                value: '3',
                label: 'Non-public',
              },
            ]}
            label="Goal Disclosure"
            help="Customers, invited reviewers are shared by default"
            name="publicType"
          />
          <ProFormDependency name={['publicType']}>
            {({ publicType }) => {
              return (
                <ProFormSelect
                  width="md"
                  name="publicUsers"
                  fieldProps={{
                    style: {
                      margin: '8px 0',
                      display: publicType && publicType === '2' ? 'block' : 'none',
                    },
                  }}
                  options={[
                    {
                      value: '1',
                      label: 'Colleague A',
                    },
                    {
                      value: '2',
                      label: 'Colleague B',
                    },
                    {
                      value: '3',
                      label: 'Colleague C',
                    },
                  ]}
                />
              );
            }}
          </ProFormDependency>
        </ProForm>
      </Card>
    </PageContainer>
  );
};

export default FormBasicForm;
